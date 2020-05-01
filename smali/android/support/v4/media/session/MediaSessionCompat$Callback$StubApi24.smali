.class Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 889
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    .line 894
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 899
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 904
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 909
    return-void
.end method
