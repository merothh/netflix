.class public final Lo/ZV$Activity;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final c:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/ZV$Activity;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "titleView"

    const-string v4, "getTitleView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/ZV$Activity;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 42
    sget v0, Lo/Zt$Application;->A:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ZV$Activity;->c:Lo/ams;

    return-void
.end method


# virtual methods
.method public final d()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/ZV$Activity;->c:Lo/ams;

    sget-object v1, Lo/ZV$Activity;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method