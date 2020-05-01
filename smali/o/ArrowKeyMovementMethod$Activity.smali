.class public final Lo/ArrowKeyMovementMethod$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArrowKeyMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ArrowKeyMovementMethod$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(ZZZ)I
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cJ:I

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 109
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cI:I

    goto :goto_0

    .line 110
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cM:I

    :goto_0
    return p1
.end method
