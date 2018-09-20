{$errs=[
'psys_empty'=>'Select payment system',
'psys_wrong'=>'Wrong payment system',
'sum_empty'=>'Input amount',
'sum_wrong'=>'Wrong amount',
'plan_wrong'=>'Wrong plan',
'compnd_wrong'=>"Wrong value [$cmin..$cmax]",
'compnd_wrong1'=>"Wrong value for plan '$cplan'",
'login_empty'=>"input $txt_login/Password",
'login_not_found'=>"wrong $txt_login/Password",
'banned'=>"access to the account is suspended $ban_date",
'blocked'=>'account is blocked',
'pass_not_found'=>'Wrong Password',
'mail_empty'=>'input e-mail',
'mail_wrong'=>'wrong e-mail',
'mail_used'=>'e-mail is already used',
'captcha_wrong' => 'Captcha wrong',
'oper_disabled'=>'Operation disabled',
'psys_empty'=>'Select payment system',
'sum_wrong'=>'Wrong amount',
'plan_wrong'=>'Wrong plan',
'compnd_wrong'=>"wrong value [$cmin..$cmax]",
'compnd_wrong1'=>"wrong value for plan '$cplan'",
'limit_exceeded'=>'Limit exceeded',
'pin_wrong'=>'Wrong PIN-code',
'psys2_empty'=>'Payment system wrong',
'psys2_equal_psys'=>'Payment system must be different',
'ex_rate_not_set'=>'Exchange rate is not specified',
'low_bal1'=>'Insufficient funds',
'user2_empty'=>'User not found',
'user2_equal_user'=>'Users must be different',
'name_empty'=>'Input Name',
'login_empty'=>'Enter login',
'login_short'=>"Login is too short [less than {$_cfg.Account_MinLogin}]",
'login_wrong'=>'Wrong login format',
'login_used'=>'This login is busy',
'mail_empty'=>'Input e-mail',
'mail_wrong'=>'Wrong e-mail',
'mail_used'=>'E-mail is already in use',
'pass_empty'=>'Input password',
'pass_short'=>"Password is too short [less than {$_cfg.Account_MinPass}]",
'pass_wrong'=>'Password does not match the format',
'pass_not_equal'=>'Passwords do not match',
'tel_wrong'=>'Wrong number',
'ref_empty'=>"Input $txt_login",
'ref_not_found'=>"$txt_login not found",
'inv_empty'=>'Input code',
'inv_not_found'=>'Wrong code',
'inv_used'=>'Code is already in use',
'secq_empty'=>'Input question',
'secq_short'=>"Question is too short [less than {$_cfg.Sec_MinSQA}]",
'seca_empty'=>'Input answer',
'seca_short'=>"Answer is too short [less than {$_cfg.Sec_MinSQA}]",
'seqa_equal_secq'=>'Answer can not be the same with the question',
'must_agree'=>'You must accept the rules',
'multi_reg'=>'Multiple registration is forbidden',
'tz_wrong'=>'Wrong zone [h:m]',
'ga_wrong' => 'Google authenticator code wrong',
'psys_wrong'=>'Input payment system',
'pin_wrong'=>'Wrong PIN-code',
'NXacc_wrong' => 'Wrong number Nix Money',
'ACacc_wrong' => 'Wrong number Advanced Cash',
'pass0_wrong'=>'Wrong password',
'user_not_found'=>'Input e-mail',
'topic_empty'=>'Input topic',
'text_empty'=>'Input text'

]}

{strip}
    {$error_text='' scope='global'}
    {$error_class='' scope='global'}
    {if $errs and (count($tpl_errors[$form]) > 0)}
        {foreach from=$errs key=i item=e}
            {if in_array($i, $tpl_errors[$form])}
                {$error_text="{$error_text}$e<br>" scope='global'}
                {$error_class='error' scope='global'}
                {$tpl_errors[$form][array_search($i, $tpl_errors[$form])] = NULL scope='global'}
            {/if}
        {/foreach}
    {/if}
    {if $error_text}
        <div class="alert alert--danger">
            {$error_text}
        </div>
        {$error_text=NULL scope='global'}
    {/if}
{/strip}
