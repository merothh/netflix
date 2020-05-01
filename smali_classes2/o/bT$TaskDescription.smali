.class final Lo/bT$TaskDescription;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic e:Lo/bT;


# direct methods
.method private constructor <init>(Lo/bT;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/bT$TaskDescription;->e:Lo/bT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/bT;Lo/bT$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lo/bT$TaskDescription;-><init>(Lo/bT;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "nf_prepareHelperImpl"

    const-string p2, "TTR done broadcast received, process any pending items."

    .line 136
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lo/bT$TaskDescription;->e:Lo/bT;

    invoke-static {p1}, Lo/bT;->a(Lo/bT;)V

    return-void
.end method
