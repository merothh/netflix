.class Lo/Redirect$Application;
.super Lo/NumberFormatException$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/Redirect$Activity;",
        ">",
        "Lo/NumberFormatException$StateListAnimator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/Redirect$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lo/NumberFormatException$StateListAnimator;-><init>(Lo/NumberFormatException$Activity;)V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lo/Redirect$Application;->d:Lo/NumberFormatException$Activity;

    check-cast p1, Lo/Redirect$Activity;

    invoke-interface {p1, p2}, Lo/Redirect$Activity;->a(Ljava/lang/Object;)V

    return-void
.end method
