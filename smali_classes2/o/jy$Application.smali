.class final Lo/jy$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueuedWork;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jy;->d(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    iput-boolean p1, p0, Lo/jy$Application;->c:Z

    iput-object p2, p0, Lo/jy$Application;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/UiAutomationConnection;)Z
    .locals 11

    const-string v0, "device"

    const-string v1, "abTests"

    const-string v2, "netflix"

    const-string v3, "error"

    invoke-static {p1, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-boolean v4, p0, Lo/jy$Application;->c:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 89
    sget-object p1, Lo/jy;->a:Lo/jy;

    check-cast p1, Lo/MessagePdu;

    goto/16 :goto_5

    .line 92
    :cond_0
    sget-object v4, Lo/jy;->a:Lo/jy;

    check-cast v4, Lo/MessagePdu;

    .line 94
    :try_start_0
    sget-object v4, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v4}, Lcom/netflix/cl/util/NavigationLevelCollector;->getCurrentScreen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lo/UiAutomationConnection;->b(Ljava/lang/String;)V

    const-string v4, "screen"

    .line 98
    sget-object v6, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v6}, Lcom/netflix/cl/util/NavigationLevelCollector;->getCurrentScreen()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {p1, v2, v4, v6}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-object v4, Lo/jy;->a:Lo/jy;

    invoke-virtual {v4}, Lo/jy;->c()Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lo/jy;->a:Lo/jy;

    invoke-virtual {v6}, Lo/jy;->d()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v6}, Lo/akI;->d(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const-string v6, "tests"

    .line 103
    sget-object v7, Lo/jy;->a:Lo/jy;

    invoke-virtual {v7, v4}, Lo/jy;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v6, v7}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "type"

    .line 108
    invoke-static {}, Lo/adq;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "tablet"

    goto :goto_0

    :cond_1
    const-string v7, "phone"

    .line 105
    :goto_0
    invoke-virtual {p1, v0, v6, v7}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "ram"

    .line 110
    invoke-static {}, Lo/aek;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0, v6, v7}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 219
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-array v6, v5, [Ljava/lang/String;

    .line 223
    invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v0, :cond_7

    .line 112
    :try_start_1
    invoke-virtual {p1, v1, v1, v0}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "abTestCells"

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 225
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :cond_3
    check-cast v7, Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    new-array v4, v5, [Ljava/lang/String;

    .line 229
    invoke-interface {v7, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 119
    invoke-virtual {p1, v1, v0, v4}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    sget-object v0, Lo/jy;->a:Lo/jy;

    invoke-virtual {v0}, Lo/jy;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 127
    sget-object v1, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v1, v0}, Lo/jE$ActionBar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x64

    const-string v6, "guid1"

    if-ge v1, v4, :cond_4

    .line 130
    :try_start_2
    invoke-virtual {p1, v2, v6, v0}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/16 v1, 0x63

    .line 135
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, v2, v6, v4}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "guid2"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v2, v4, v0}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    const-string v0, "installer"

    .line 148
    iget-object v1, p0, Lo/jy$Application;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lo/jy$Application;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p1, v2, v0, v1}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    sget-object v0, Lo/jy;->a:Lo/jy;

    iget-object v1, p0, Lo/jy$Application;->d:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lo/jy;->a(Lo/jy;Landroid/content/Context;Lo/UiAutomationConnection;)V

    goto :goto_4

    .line 229
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 152
    sget-object v1, Lo/jy;->a:Lo/jy;

    check-cast v1, Lo/MessagePdu;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    const/4 v5, 0x1

    :goto_5
    return v5
.end method
