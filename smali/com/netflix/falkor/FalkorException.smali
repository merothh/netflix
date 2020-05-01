.class public final Lcom/netflix/falkor/FalkorException;
.super Lcom/android/volley/VolleyError;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "FalkorException"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "wrong state"

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Lo/zz;)Lcom/netflix/mediaclient/StatusCode;
    .locals 3

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->Y:Lcom/netflix/mediaclient/StatusCode;

    .line 34
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 42
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->O:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->X:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_0

    .line 49
    :cond_2
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->W:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_0

    .line 52
    :cond_3
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->N:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_0

    .line 55
    :cond_4
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->U:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 58
    :cond_5
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Endpoint NPE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lo/zz;->c(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    .line 62
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->J:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 64
    :cond_7
    invoke-static {p0}, Lo/Downloads;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cY:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 67
    :cond_8
    invoke-static {p0}, Lo/Downloads;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cZ:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 70
    :cond_9
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p1, :cond_a

    .line 72
    sget-object p0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v0, "map cache miss"

    invoke-interface {p1, p0, v0}, Lo/zz;->c(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    .line 74
    :cond_a
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->R:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 76
    :cond_b
    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lo/zz;->c(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    .line 80
    :cond_c
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->P:Lcom/netflix/mediaclient/StatusCode;

    .line 83
    :cond_d
    :goto_0
    sget-object p0, Lcom/netflix/falkor/FalkorException;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusCode :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "deleted profile"

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "failurereason=insufficientdata"

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "failurereason=invalidcountry"

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "NON_MEMBER_FAULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "not authorized"

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unauthorized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "nullpointerexception"

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map error"

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cache miss"

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mapgetcachedlistclient failed"

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cachemiss"

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
