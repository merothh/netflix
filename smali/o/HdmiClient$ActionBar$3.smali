.class Lo/HdmiClient$ActionBar$3;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiClient$ActionBar;->b(Landroid/util/Pair;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/HdmiClient$ActionBar;

.field final synthetic e:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lo/HdmiClient$ActionBar;Landroid/util/Pair;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    iput-object p2, p0, Lo/HdmiClient$ActionBar$3;->e:Landroid/util/Pair;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 296
    iget-object v0, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v0}, Lo/HdmiClient$ActionBar;->b(Lo/HdmiClient$ActionBar;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/VendorTagDescriptorCache;->b(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    .line 302
    invoke-static {v0}, Lo/HdmiClient$ActionBar;->h(Lo/HdmiClient$ActionBar;)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lo/VendorTagDescriptorCache;->c(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 307
    iget-object v0, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v0}, Lo/HdmiClient$ActionBar;->a(Lo/HdmiClient$ActionBar;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/VendorTagDescriptorCache;->d(Ljava/util/List;)V

    return-void
.end method

.method public d()V
    .locals 7

    .line 268
    iget-object v0, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v1}, Lo/HdmiClient$ActionBar;->e(Lo/HdmiClient$ActionBar;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-object v2, p0, Lo/HdmiClient$ActionBar$3;->e:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 271
    iget-object v3, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v3}, Lo/HdmiClient$ActionBar;->e(Lo/HdmiClient$ActionBar;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v3}, Lo/HdmiClient$ActionBar;->d(Lo/HdmiClient$ActionBar;)Lo/VendorTagDescriptorCache;

    move-result-object v3

    move-object v4, v2

    goto :goto_0

    .line 274
    :cond_0
    iget-object v3, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v3}, Lo/HdmiClient$ActionBar;->b(Lo/HdmiClient$ActionBar;)Ljava/util/List;

    move-result-object v3

    .line 275
    iget-object v4, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v4}, Lo/HdmiClient$ActionBar;->a(Lo/HdmiClient$ActionBar;)Ljava/util/List;

    move-result-object v4

    .line 276
    iget-object v5, p0, Lo/HdmiClient$ActionBar$3;->a:Lo/HdmiClient$ActionBar;

    invoke-static {v5}, Lo/HdmiClient$ActionBar;->h(Lo/HdmiClient$ActionBar;)Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v4, v3

    :goto_0
    move-object v5, v4

    .line 279
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {v2}, Lo/VendorTagDescriptorCache;->b(Ljava/util/List;)V

    .line 282
    invoke-static {v4}, Lo/VendorTagDescriptorCache;->d(Ljava/util/List;)V

    .line 283
    invoke-static {v5}, Lo/VendorTagDescriptorCache;->c(Ljava/util/List;)V

    if-eqz v3, :cond_2

    .line 287
    invoke-virtual {v3}, Lo/VendorTagDescriptorCache;->i()V

    :cond_2
    if-eqz v1, :cond_3

    .line 290
    iget-object v0, p0, Lo/HdmiClient$ActionBar$3;->e:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/BrightnessChangeEvent;

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 279
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
