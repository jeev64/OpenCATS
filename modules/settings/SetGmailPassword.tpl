<?php /* $Id: SetGmailPassword.tpl 1927 2007-02-22 06:03:24Z will $ */ ?>
<?php TemplateUtility::printHeader('Settings', array('modules/settings/validator.js', 'js/sorttable.js')); ?>
<?php TemplateUtility::printHeaderBlock(); ?>
<?php TemplateUtility::printTabs($this->active, $this->subActive); ?>
    <div id="main">
        <?php TemplateUtility::printQuickSearch(); ?>

        <div id="contents">
            <table>
                <tr>
                    <td width="3%">
                        <img src="images/settings.gif" width="24" height="24" border="0" alt="Settings" style="margin-top: 3px;" />&nbsp;
                    </td>
                    <td><h2>Settings: My Profile</h2></td>
                </tr>
            </table>

            <p class="note">Set Gmail Password</p>

            <form name="setGmailPasswordForm" id="setGmailPasswordForm" action="<?php echo(CATSUtility::getIndexName()); ?>?m=settings&amp;a=setGmailPassword" method="post" onsubmit="return checkSetGmailPasswordForm(document.setGmailPasswordForm);">
                <input type="hidden" name="postback" id="postback" value="postback" />

                <table class="searchTable">
                    <tr>
                        <td colspan="2">
                            <span class="bold">Set Gmail Password</span>
                            <br />
                            <br />
                            <span id='passwordErrorMessage' style="font:smaller; color: red">
                                <?php if (isset($this->errorMessage)): ?>
                                        <?php $this->_($this->errorMessage); ?>
                                <?php endif; ?>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label id="newPasswordLabel" for="newPassword">New Gmail Password:</label>&nbsp;
                        </td>
                        <td>
                            <input type="password" class="inputbox" id="newPassword" name="newPassword" />&nbsp;*
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label id="retypeNewPasswordLabel" for="retypeNewPassword">Retype New Gmail Password:</label>&nbsp;
                        </td>
                        <td>
                            <input type="password" class="inputbox" id="retypeNewPassword" name="retypeNewPassword" />&nbsp;*
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <br />
                            <input type="submit" class="button" id="setGmailPassword" name="setGmailPassword" value="Set Gmail Password" />
                            <input type="reset"  class="button" id="reset"          name="reset"          value="Reset" />
                            <input type="button" name="back" class = "button" value="Back" onclick="document.location.href='<?php echo(CATSUtility::getIndexName()); ?>?m=settings';" />
                       </td>
                    </tr>
                </table>
            </form>

            <script type="text/javascript">
                document.setGmailPasswordForm.newPassword.focus();
            </script>
        </div>
    </div>
    <div id="bottomShadow"></div>
<?php TemplateUtility::printFooter(); ?>
