.class public final Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldShowHorizontalDividers()Z
    .locals 1

    .line 10
    sget-object v0, Lo/fK;->c:Lo/fK$TaskDescription;

    invoke-virtual {v0}, Lo/fK$TaskDescription;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    sget-object v0, Lo/fM;->d:Lo/fM$Activity;

    invoke-virtual {v0}, Lo/fM$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
