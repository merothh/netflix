.class public abstract Lo/fD;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fD$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/fD$ActionBar;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Z

.field private c:Z

.field private final d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fD$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fD$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fD;->e:Lo/fD$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/fC;-><init>()V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/fD;->d:Lorg/json/JSONObject;

    return-void
.end method

.method private final e(Ljava/lang/Exception;)V
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to init dynamic ab test: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/fD;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lo/fD;->e:Lo/fD$ActionBar;

    check-cast v1, Lo/MessagePdu;

    .line 199
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 200
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    .line 199
    invoke-interface {v1, v0, v2}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    iget-object v0, p0, Lo/fD;->d:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private final j()Z
    .locals 10

    .line 81
    sget-object v0, Lo/fD;->e:Lo/fD$ActionBar;

    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    .line 82
    iget-boolean v1, p0, Lo/fD;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lo/MessagePdu;

    return v2

    .line 87
    :cond_0
    new-instance v0, Lo/bY$TaskDescription;

    invoke-virtual {p0}, Lo/fD;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    .line 88
    const-class v1, Lo/bY;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/bY;

    .line 90
    invoke-interface {v1, v0}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 91
    iget-object v3, p0, Lo/fD;->a:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 92
    sget-object v0, Lo/fD;->e:Lo/fD$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 93
    iget-object v0, p0, Lo/fD;->d:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 95
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/fB;->d(J)J

    move-result-wide v1

    const-string v3, "already_requested"

    .line 93
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 98
    :cond_2
    sget-object v3, Lo/fD;->e:Lo/fD$ActionBar;

    check-cast v3, Lo/MessagePdu;

    .line 99
    iget-object v3, p0, Lo/fD;->d:Lorg/json/JSONObject;

    const-string v5, "not installed"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lo/fD;->a:Ljava/lang/Long;

    .line 102
    sget-object v5, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 273
    const-class v5, Landroid/content/Context;

    invoke-static {v5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/fB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 104
    sget-object v5, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 274
    const-class v5, Landroid/content/Context;

    invoke-static {v5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/fB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2, v3}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 106
    :cond_3
    iget-boolean v5, p0, Lo/fD;->b:Z

    if-eqz v5, :cond_4

    .line 107
    sget-object v2, Lo/fD;->e:Lo/fD$ActionBar;

    check-cast v2, Lo/MessagePdu;

    .line 108
    invoke-interface {v1, v0}, Lo/bY;->d(Lo/bY$TaskDescription;)V

    goto :goto_0

    .line 110
    :cond_4
    sget-object v5, Lo/fD;->e:Lo/fD$ActionBar;

    check-cast v5, Lo/MessagePdu;

    .line 111
    invoke-interface {v1, v0}, Lo/bY;->c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/fw;

    invoke-virtual {p0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v2, v3}, Lo/fw;-><init>(Ljava/lang/String;J)V

    check-cast v1, Lio/reactivex/Observer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return v4

    .line 118
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lo/fD;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 119
    iput-boolean v2, p0, Lo/fD;->c:Z

    .line 120
    sget-object v0, Lo/fD;->e:Lo/fD$ActionBar;

    check-cast v0, Lo/MessagePdu;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lo/fD;->e(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 126
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lo/fD;->e(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 123
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lo/fD;->e(Ljava/lang/Exception;)V

    :goto_1
    return v4
.end method


# virtual methods
.method public B_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lo/fD;->o()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fD;

    .line 137
    invoke-virtual {v0}, Lo/fD;->n()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-virtual {v0}, Lo/fD;->o()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    if-nez v2, :cond_5

    .line 140
    invoke-super {p0, p1, p2}, Lo/fC;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 142
    invoke-virtual {v0}, Lo/fD;->o()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 145
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lo/fD;->b:Z

    .line 148
    invoke-virtual {v0}, Lo/fD;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {v0}, Lo/fD;->j()Z

    move-result p1

    if-nez p1, :cond_3

    .line 150
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 151
    iget-object v2, v0, Lo/fD;->d:Lorg/json/JSONObject;

    const-string v3, "ab_test_bundle"

    .line 152
    invoke-virtual {v0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "explicit"

    .line 153
    invoke-virtual {v0}, Lo/fD;->o()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "forced"

    .line 154
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    new-instance v3, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v3, v2}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 150
    invoke-virtual {p1, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 158
    invoke-virtual {v0, p2}, Lo/fD;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)V

    goto :goto_1

    .line 160
    :cond_3
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 290
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 160
    invoke-virtual {v0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/fB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v4, p1, v2

    if-lez v4, :cond_5

    .line 163
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 164
    iget-object v3, v0, Lo/fD;->d:Lorg/json/JSONObject;

    const-string v4, "ab_test_bundle"

    .line 165
    invoke-virtual {v0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "install_to_alloc"

    .line 166
    invoke-static {p1, p2}, Lo/fB;->d(J)J

    move-result-wide p1

    invoke-virtual {v3, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    new-instance p1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {p1, v3}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 163
    invoke-virtual {v2, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 169
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 291
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Lo/fD;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/fB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "Required value was null."

    .line 142
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 173
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lo/fD;->o()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 137
    monitor-exit v1

    :goto_2
    return-object v0

    :cond_6
    :try_start_1
    const-string p1, "Required value was null."

    .line 173
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 137
    monitor-exit v1

    throw p1
.end method

.method public a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;Lo/cS$Application;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editor"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Lo/fC;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;Lo/cS$Application;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lo/fD;->h()Z

    move-result p2

    if-nez p2, :cond_0

    .line 188
    invoke-direct {p0}, Lo/fD;->j()Z

    :cond_0
    return p1
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public final h()Z
    .locals 2

    .line 63
    iget-boolean v0, p0, Lo/fD;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    new-instance v0, Lo/bY$TaskDescription;

    invoke-virtual {p0}, Lo/fD;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    .line 68
    const-class v1, Lo/bY;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/bY;

    .line 69
    invoke-interface {v1, v0}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v0

    return v0
.end method
