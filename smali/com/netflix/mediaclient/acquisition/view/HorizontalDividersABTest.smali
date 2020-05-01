.class public final Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;->Companion:Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final shouldShowHorizontalDividers()Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;->Companion:Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;->shouldShowHorizontalDividers()Z

    move-result v0

    return v0
.end method
