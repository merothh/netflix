.class final Lo/AudioPlaybackHandler$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AudioPlaybackHandler;->d(Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

.field final synthetic e:Lo/AudioPlaybackHandler;


# direct methods
.method constructor <init>(Lo/AudioPlaybackHandler;Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;)V
    .locals 0

    iput-object p1, p0, Lo/AudioPlaybackHandler$StateListAnimator;->e:Lo/AudioPlaybackHandler;

    iput-object p2, p0, Lo/AudioPlaybackHandler$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 41
    iget-object p1, p0, Lo/AudioPlaybackHandler$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->updateIsKidsProfile(Z)V

    .line 42
    sget-object p1, Lo/AudioPlaybackHandler;->c:Lo/AudioPlaybackHandler$Application;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lo/AudioPlaybackHandler$Application;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/AudioPlaybackHandler$Application;->a()I

    move-result p1

    .line 43
    :goto_0
    iget-object p2, p0, Lo/AudioPlaybackHandler$StateListAnimator;->e:Lo/AudioPlaybackHandler;

    invoke-virtual {p2}, Lo/AudioPlaybackHandler;->e()Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lo/AudioPlaybackHandler$StateListAnimator;->e:Lo/AudioPlaybackHandler;

    invoke-virtual {v0}, Lo/AudioPlaybackHandler;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
