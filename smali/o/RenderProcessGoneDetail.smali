.class public final Lo/RenderProcessGoneDetail;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MO;


# static fields
.field public static final b:Lo/RenderProcessGoneDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/RenderProcessGoneDetail;

    invoke-direct {v0}, Lo/RenderProcessGoneDetail;-><init>()V

    sput-object v0, Lo/RenderProcessGoneDetail;->b:Lo/RenderProcessGoneDetail;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixMdxController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "netflixActivity"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
