.class Lo/Dk$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dk;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Dk;


# direct methods
.method constructor <init>(Lo/Dk;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/Dk$4;->d:Lo/Dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 96
    iget-object p1, p0, Lo/Dk$4;->d:Lo/Dk;

    invoke-virtual {p1}, Lo/Dk;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lo/Dk$4;->d:Lo/Dk;

    invoke-virtual {p1}, Lo/Dk;->getActivity()Lo/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
