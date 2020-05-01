.class public final Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "MultiMonthEpoxyController"

    .line 21
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;-><init>()V

    return-void
.end method
