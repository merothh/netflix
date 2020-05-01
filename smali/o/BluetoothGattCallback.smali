.class public Lo/BluetoothGattCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothGattCallback$Activity;,
        Lo/BluetoothGattCallback$ActionBar;,
        Lo/BluetoothGattCallback$StateListAnimator;
    }
.end annotation


# static fields
.field private static final a:Lo/BluetoothAvrcpPlayerSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lo/BluetoothGattCallback$ActionBar;


# instance fields
.field private final b:Lo/BluetoothGattCallback$ActionBar;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/BluetoothGattCallback$StateListAnimator<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BluetoothGattCallback$StateListAnimator<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final h:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/BluetoothGattCallback$ActionBar;

    invoke-direct {v0}, Lo/BluetoothGattCallback$ActionBar;-><init>()V

    sput-object v0, Lo/BluetoothGattCallback;->d:Lo/BluetoothGattCallback$ActionBar;

    .line 25
    new-instance v0, Lo/BluetoothGattCallback$Activity;

    invoke-direct {v0}, Lo/BluetoothGattCallback$Activity;-><init>()V

    sput-object v0, Lo/BluetoothGattCallback;->a:Lo/BluetoothAvrcpPlayerSettings;

    return-void
.end method

.method public constructor <init>(Lo/CharArrayReader$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    sget-object v0, Lo/BluetoothGattCallback;->d:Lo/BluetoothGattCallback$ActionBar;

    invoke-direct {p0, p1, v0}, Lo/BluetoothGattCallback;-><init>(Lo/CharArrayReader$Activity;Lo/BluetoothGattCallback$ActionBar;)V

    return-void
.end method

.method constructor <init>(Lo/CharArrayReader$Activity;Lo/BluetoothGattCallback$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Lo/BluetoothGattCallback$ActionBar;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BluetoothGattCallback;->e:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Lo/BluetoothGattCallback;->h:Lo/CharArrayReader$Activity;

    .line 39
    iput-object p2, p0, Lo/BluetoothGattCallback;->b:Lo/BluetoothGattCallback$ActionBar;

    return-void
.end method

.method private static a()Lo/BluetoothAvrcpPlayerSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 185
    sget-object v0, Lo/BluetoothGattCallback;->a:Lo/BluetoothAvrcpPlayerSettings;

    return-object v0
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Lo/BluetoothDevice;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lo/BluetoothDevice<",
            "+TModel;+TData;>;Z)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lo/BluetoothGattCallback$StateListAnimator;

    invoke-direct {v0, p1, p2, p3}, Lo/BluetoothGattCallback$StateListAnimator;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lo/BluetoothDevice;)V

    .line 62
    iget-object p1, p0, Lo/BluetoothGattCallback;->e:Ljava/util/List;

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private d(Lo/BluetoothGattCallback$StateListAnimator;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/BluetoothGattCallback$StateListAnimator<",
            "**>;)",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 179
    iget-object p1, p1, Lo/BluetoothGattCallback$StateListAnimator;->b:Lo/BluetoothDevice;

    invoke-interface {p1, p0}, Lo/BluetoothDevice;->e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;

    move-result-object p1

    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BluetoothAvrcpPlayerSettings;

    return-object p1
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lo/BluetoothGattCallback;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BluetoothGattCallback$StateListAnimator;

    .line 101
    iget-object v3, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v2, p1}, Lo/BluetoothGattCallback$StateListAnimator;->b(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, v2}, Lo/BluetoothGattCallback;->d(Lo/BluetoothGattCallback$StateListAnimator;)Lo/BluetoothAvrcpPlayerSettings;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v3, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 112
    :try_start_1
    iget-object v0, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 113
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lo/BluetoothDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lo/BluetoothDevice<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 46
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lo/BluetoothGattCallback;->c(Ljava/lang/Class;Ljava/lang/Class;Lo/BluetoothDevice;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lo/BluetoothGattCallback;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BluetoothGattCallback$StateListAnimator;

    .line 121
    iget-object v3, v2, Lo/BluetoothGattCallback$StateListAnimator;->e:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Lo/BluetoothGattCallback$StateListAnimator;->b(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v2, v2, Lo/BluetoothGattCallback$StateListAnimator;->e:Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Class;Ljava/lang/Class;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;TData;>;"
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v1, p0, Lo/BluetoothGattCallback;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/BluetoothGattCallback$StateListAnimator;

    .line 140
    iget-object v6, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v5, p1, p2}, Lo/BluetoothGattCallback$StateListAnimator;->e(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    iget-object v6, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0, v5}, Lo/BluetoothGattCallback;->d(Lo/BluetoothGattCallback$StateListAnimator;)Lo/BluetoothAvrcpPlayerSettings;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v6, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 151
    iget-object p1, p0, Lo/BluetoothGattCallback;->b:Lo/BluetoothGattCallback$ActionBar;

    iget-object p2, p0, Lo/BluetoothGattCallback;->h:Lo/CharArrayReader$Activity;

    invoke-virtual {p1, v0, p2}, Lo/BluetoothGattCallback$ActionBar;->d(Ljava/util/List;Lo/CharArrayReader$Activity;)Lo/BluetoothGatt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 152
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BluetoothAvrcpPlayerSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    if-eqz v4, :cond_5

    .line 159
    :try_start_2
    invoke-static {}, Lo/BluetoothGattCallback;->a()Lo/BluetoothAvrcpPlayerSettings;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 161
    :cond_5
    :try_start_3
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 165
    :try_start_4
    iget-object p2, p0, Lo/BluetoothGattCallback;->c:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 166
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
