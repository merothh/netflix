.class Lo/DeviceAdminReceiver;
.super Ljava/lang/Object;
.source ""


# instance fields
.field c:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "password"

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceAdminReceiver;->c:[Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 5

    .line 71
    iget-object v0, p0, Lo/DeviceAdminReceiver;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method c(Ljava/lang/Object;Lo/WaitResult;)V
    .locals 3

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p2}, Lo/WaitResult;->a()Lo/WallpaperManager;

    goto/16 :goto_3

    .line 23
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    goto/16 :goto_3

    .line 25
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Lo/WaitResult;->e(Ljava/lang/Number;)Lo/WallpaperManager;

    goto/16 :goto_3

    .line 27
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lo/WaitResult;->b(Ljava/lang/Boolean;)Lo/WallpaperManager;

    goto/16 :goto_3

    .line 29
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {p2}, Lo/WaitResult;->d()Lo/WallpaperManager;

    .line 32
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 38
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-virtual {p2, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    .line 41
    invoke-direct {p0, v1}, Lo/DeviceAdminReceiver;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "[FILTERED]"

    .line 42
    invoke-virtual {p2, v0}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    goto :goto_0

    .line 44
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/DeviceAdminReceiver;->c(Ljava/lang/Object;Lo/WaitResult;)V

    goto :goto_0

    .line 48
    :cond_6
    invoke-virtual {p2}, Lo/WaitResult;->c()Lo/WallpaperManager;

    goto :goto_3

    .line 49
    :cond_7
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_9

    .line 51
    invoke-virtual {p2}, Lo/WaitResult;->e()Lo/WallpaperManager;

    .line 52
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0, p2}, Lo/DeviceAdminReceiver;->c(Ljava/lang/Object;Lo/WaitResult;)V

    goto :goto_1

    .line 55
    :cond_8
    invoke-virtual {p2}, Lo/WaitResult;->b()Lo/WallpaperManager;

    goto :goto_3

    .line 56
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    invoke-virtual {p2}, Lo/WaitResult;->e()Lo/WallpaperManager;

    .line 59
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_a

    .line 61
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lo/DeviceAdminReceiver;->c(Ljava/lang/Object;Lo/WaitResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    :cond_a
    invoke-virtual {p2}, Lo/WaitResult;->b()Lo/WallpaperManager;

    goto :goto_3

    :cond_b
    const-string p1, "[OBJECT]"

    .line 65
    invoke-virtual {p2, p1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    :goto_3
    return-void
.end method
