.class public final Lo/aan$ActionBar;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final e:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/aan$ActionBar;

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

    sput-object v0, Lo/aan$ActionBar;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 38
    sget v0, Lo/Zt$Application;->s:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/aan$ActionBar;->e:Lo/ams;

    return-void
.end method


# virtual methods
.method public final b()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/aan$ActionBar;->e:Lo/ams;

    sget-object v1, Lo/aan$ActionBar;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method
