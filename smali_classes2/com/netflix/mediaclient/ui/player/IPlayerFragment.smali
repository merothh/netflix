.class public interface abstract Lcom/netflix/mediaclient/ui/player/IPlayerFragment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;
    }
.end annotation


# virtual methods
.method public abstract B()V
.end method

.method public abstract U_()Lo/Am;
.end method

.method public abstract V_()V
.end method

.method public abstract W_()V
.end method

.method public abstract X_()Z
.end method

.method public abstract Y_()Lo/Uc;
.end method

.method public abstract Z_()Landroid/view/View;
.end method

.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
.end method

.method public abstract a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(JZJ)Z
.end method

.method public abstract aa_()Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract b(Ljava/lang/Runnable;)V
.end method

.method public varargs abstract b([Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)Z
.end method

.method public abstract c(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract c(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(Z)V
.end method

.method public abstract c()Z
.end method

.method public abstract d(I)V
.end method

.method public abstract d(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZZILcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
.end method

.method public abstract e()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.end method

.method public abstract g()Landroid/content/Context;
.end method

.method public abstract h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract k()Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation
.end method

.method public abstract l()Z
.end method

.method public abstract m()Lo/AK;
.end method

.method public abstract p()Landroid/os/Handler;
.end method

.method public abstract q()Z
.end method

.method public abstract r()Lo/Tv;
.end method

.method public abstract v()V
.end method

.method public abstract x()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
.end method

.method public abstract y()V
.end method
