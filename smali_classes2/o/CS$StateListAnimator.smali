.class public final Lo/CS$StateListAnimator;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/CS$StateListAnimator;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "label"

    const-string v4, "getLabel()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/CS$StateListAnimator;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 31
    sget v0, Lo/NdefMessage$TaskDescription;->e:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/CS$StateListAnimator;->a:Lo/ams;

    return-void
.end method


# virtual methods
.method public final c()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/CS$StateListAnimator;->a:Lo/ams;

    sget-object v1, Lo/CS$StateListAnimator;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
