.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GK;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/VideoView;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/VideoView;
    .locals 2

    .line 99
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 330
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 98
    new-instance v1, Lo/VideoView;

    invoke-direct {v1, v0}, Lo/VideoView;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;->d()Lo/VideoView;

    move-result-object v0

    return-object v0
.end method
