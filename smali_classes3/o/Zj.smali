.class public final Lo/Zj;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final c:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Zj;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleTextView"

    const-string v5, "getTitleTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "titleImage"

    const-string v4, "getTitleImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/Zj;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/PooledStringWriter;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v0, Lo/Zr$Application;->d:I

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;-><init>(Landroid/view/View;Lo/PooledStringWriter;I)V

    .line 22
    sget p1, Lo/Zr$Application;->b:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Zj;->a:Lo/ams;

    .line 23
    sget p1, Lo/Zr$Application;->a:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Zj;->c:Lo/ams;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "lopi"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Zj;->a:Lo/ams;

    sget-object v1, Lo/Zj;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/Zj;->c:Lo/ams;

    sget-object v1, Lo/Zj;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method
