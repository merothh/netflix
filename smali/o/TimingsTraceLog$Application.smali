.class public final Lo/TimingsTraceLog$Application;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TimingsTraceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final b:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/TimingsTraceLog$Application;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "imageView"

    const-string v4, "getImageView()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/TimingsTraceLog$Application;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 15
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->tv:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/TimingsTraceLog$Application;->b:Lo/ams;

    return-void
.end method


# virtual methods
.method public final d()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/TimingsTraceLog$Application;->b:Lo/ams;

    sget-object v1, Lo/TimingsTraceLog$Application;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method
