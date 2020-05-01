.class public Lo/ParcelUuid$TaskDescription;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ParcelUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/Random;


# instance fields
.field private final c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lo/ParcelUuid$TaskDescription;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Lo/PooledStringWriter;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;-><init>(Landroid/view/View;Lo/PooledStringWriter;I)V

    .line 83
    sget p3, Lo/IHwInterface$FragmentManager;->m:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/ParcelUuid$TaskDescription;->c:Landroid/widget/TextView;

    .line 84
    iget-object p1, p0, Lo/ParcelUuid$TaskDescription;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lo/ParcelUuid$TaskDescription;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lo/ParcelUuid$TaskDescription;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lo/PooledStringWriter;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lo/IHwInterface$StateListAnimator;->e:I

    goto :goto_0

    :cond_0
    sget p2, Lo/IHwInterface$StateListAnimator;->b:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lo/PooledStringWriter;ILo/ParcelUuid$5;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lo/ParcelUuid$TaskDescription;-><init>(Landroid/view/View;Lo/PooledStringWriter;I)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".........."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 90
    :goto_0
    sget-object v2, Lo/ParcelUuid$TaskDescription;->a:Ljava/util/Random;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "."

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
