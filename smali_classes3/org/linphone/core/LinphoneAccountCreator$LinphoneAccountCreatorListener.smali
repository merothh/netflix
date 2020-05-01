.class public interface abstract Lorg/linphone/core/LinphoneAccountCreator$LinphoneAccountCreatorListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/core/LinphoneAccountCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LinphoneAccountCreatorListener"
.end annotation


# virtual methods
.method public abstract onAccountCreatorAccountActivated(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorAccountCreated(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorAccountLinkedWithPhoneNumber(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorIsAccountActivated(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorIsAccountLinked(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorIsAccountUsed(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorIsPhoneNumberUsed(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorPasswordUpdated(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorPhoneAccountRecovered(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method

.method public abstract onAccountCreatorPhoneNumberLinkActivated(Lorg/linphone/core/LinphoneAccountCreator;Lorg/linphone/core/LinphoneAccountCreator$RequestStatus;)V
.end method
