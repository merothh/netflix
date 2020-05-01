.class Lo/HdmiPortInfo$ActionBar$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiPortInfo$ActionBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/HdmiPortInfo$ActionBar;


# direct methods
.method constructor <init>(Lo/HdmiPortInfo$ActionBar;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 165
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    invoke-static {v1}, Lo/HdmiPortInfo$ActionBar;->c(Lo/HdmiPortInfo$ActionBar;)Lo/CompatibilityInfo;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    invoke-static {v2}, Lo/HdmiPortInfo$ActionBar;->d(Lo/HdmiPortInfo$ActionBar;)I

    move-result v2

    .line 169
    iget-object v3, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/HdmiPortInfo$ActionBar;->c(Lo/HdmiPortInfo$ActionBar;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    .line 170
    iget-object v3, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/HdmiPortInfo$ActionBar;->a(Lo/HdmiPortInfo$ActionBar;Z)Z

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    invoke-static {v1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    invoke-static {v0, v1, v2}, Lo/HdmiPortInfo$ActionBar;->b(Lo/HdmiPortInfo$ActionBar;Lo/CompatibilityInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v0

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar$4;->d:Lo/HdmiPortInfo$ActionBar;

    invoke-static {v0}, Lo/HdmiPortInfo$ActionBar;->a(Lo/HdmiPortInfo$ActionBar;)V

    return-void

    :catchall_1
    move-exception v1

    .line 171
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
