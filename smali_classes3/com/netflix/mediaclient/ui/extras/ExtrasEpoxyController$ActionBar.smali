.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ExtrasEpoxyController"

    .line 101
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 103
    invoke-static {}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$getDEBUG_INFORMATIONAL$cp()Z

    move-result v0

    return v0
.end method
