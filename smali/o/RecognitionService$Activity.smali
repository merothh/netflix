.class public final Lo/RecognitionService$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/RecognitionService$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ZZZ)I
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cJ:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 37
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cK:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 38
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cI:I

    goto :goto_0

    .line 39
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cM:I

    :goto_0
    return p1
.end method
