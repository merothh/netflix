.class Lo/HdmiPortInfo$ActionBar$1;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiPortInfo$ActionBar;-><init>(Lo/HdmiPortInfo;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Lo/GeofenceHardwareCallback;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/HdmiPortInfo$ActionBar;

.field final synthetic c:Lo/HdmiPortInfo;


# direct methods
.method constructor <init>(Lo/HdmiPortInfo$ActionBar;Lo/HdmiPortInfo;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/HdmiPortInfo$ActionBar$1;->a:Lo/HdmiPortInfo$ActionBar;

    iput-object p2, p0, Lo/HdmiPortInfo$ActionBar$1;->c:Lo/HdmiPortInfo;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar$1;->a:Lo/HdmiPortInfo$ActionBar;

    invoke-static {v0}, Lo/HdmiPortInfo$ActionBar;->b(Lo/HdmiPortInfo$ActionBar;)V

    return-void
.end method
