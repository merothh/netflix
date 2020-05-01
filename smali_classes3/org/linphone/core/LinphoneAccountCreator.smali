.class public interface abstract Lorg/linphone/core/LinphoneAccountCreator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;,
        Lorg/linphone/core/LinphoneAccountCreator$ActivationCodeCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$LanguageCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$PasswordCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$DomainCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$EmailCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$PhoneNumberCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$UsernameCheck;,
        Lorg/linphone/core/LinphoneAccountCreator$LinphoneAccountCreatorListener;
    }
.end annotation


# virtual methods
.method public abstract activateAccount()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract activatePhoneNumberLink()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract configure()Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract createAccount()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getHa1()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract isAccountActivated()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract isAccountLinked()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract isAccountUsed()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract isPhoneNumberUsed()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract linkPhoneNumberWithAccount()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract recoverPhoneAccount()Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method

.method public abstract setActivationCode(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$ActivationCodeCheck;
.end method

.method public abstract setDisplayName(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$UsernameCheck;
.end method

.method public abstract setDomain(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$DomainCheck;
.end method

.method public abstract setEmail(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$EmailCheck;
.end method

.method public abstract setHa1(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$PasswordCheck;
.end method

.method public abstract setLanguage(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$LanguageCheck;
.end method

.method public abstract setListener(Lorg/linphone/core/LinphoneAccountCreator$LinphoneAccountCreatorListener;)V
.end method

.method public abstract setPassword(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$PasswordCheck;
.end method

.method public abstract setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setUsername(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$UsernameCheck;
.end method

.method public abstract updatePassword(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;
.end method
