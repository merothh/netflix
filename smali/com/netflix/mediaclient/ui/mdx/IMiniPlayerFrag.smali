.class public interface abstract Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;
.super Ljava/lang/Object;
.source "IMiniPlayerFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
.implements Lcom/netflix/mediaclient/ui/details/IHandleBackPress;
.implements Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;
.implements Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;


# virtual methods
.method public abstract attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getSlidingPanelDragView()Landroid/view/View;
.end method

.method public abstract getVolume()I
.end method

.method public abstract initMdxComponents()V
.end method

.method public abstract isMdxMenuEnabled()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPanelCollapsed()V
.end method

.method public abstract onPanelExpanded()V
.end method

.method public abstract onPanelSlide(F)V
.end method

.method public abstract onResumeFragments()V
.end method

.method public abstract sendDialogResponse(Ljava/lang/String;)V
.end method

.method public abstract setVolume(I)V
.end method
