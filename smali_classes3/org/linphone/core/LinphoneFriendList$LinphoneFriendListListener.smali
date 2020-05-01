.class public interface abstract Lorg/linphone/core/LinphoneFriendList$LinphoneFriendListListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/core/LinphoneFriendList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LinphoneFriendListListener"
.end annotation


# virtual methods
.method public abstract onLinphoneFriendCreated(Lorg/linphone/core/LinphoneFriendList;Lorg/linphone/core/LinphoneFriend;)V
.end method

.method public abstract onLinphoneFriendDeleted(Lorg/linphone/core/LinphoneFriendList;Lorg/linphone/core/LinphoneFriend;)V
.end method

.method public abstract onLinphoneFriendSyncStatusChanged(Lorg/linphone/core/LinphoneFriendList;Lorg/linphone/core/LinphoneFriendList$State;Ljava/lang/String;)V
.end method

.method public abstract onLinphoneFriendUpdated(Lorg/linphone/core/LinphoneFriendList;Lorg/linphone/core/LinphoneFriend;Lorg/linphone/core/LinphoneFriend;)V
.end method
