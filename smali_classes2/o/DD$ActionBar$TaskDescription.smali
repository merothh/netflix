.class public final Lo/DD$ActionBar$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DD$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DetailsPageImageTracker"

    .line 313
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lo/DD$ActionBar$TaskDescription;-><init>()V

    return-void
.end method
