.class Lo/abu$TaskDescription;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic d:Lo/abu;


# direct methods
.method private constructor <init>(Lo/abu;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lo/abu$TaskDescription;->d:Lo/abu;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/abu;Lo/abu$4;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lo/abu$TaskDescription;-><init>(Lo/abu;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
