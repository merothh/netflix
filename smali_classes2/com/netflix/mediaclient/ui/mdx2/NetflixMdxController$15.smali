.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/Build;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/Build;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    instance-of p1, p1, Lo/Build$Canvas;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 64
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;->b(Lo/Build;)Z

    move-result p1

    return p1
.end method
