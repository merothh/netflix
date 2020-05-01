.class public final Lo/aes;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;ZLjava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    .line 76
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lo/aes;->a(Ljava/lang/RuntimeException;Z)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/RuntimeException;Z)Z
    .locals 1

    .line 93
    sget-boolean v0, Lo/aes;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 96
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_0
    throw p0
.end method

.method private static b(Ljava/lang/CharSequence;ZLjava/lang/String;)Z
    .locals 0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lo/aes;->a(Ljava/lang/RuntimeException;Z)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Ljava/lang/CharSequence;)Z
    .locals 3

    const-string v0, "String cannot be empty"

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v1, v0}, Lo/aes;->a(Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {p0, v1, v0}, Lo/aes;->b(Ljava/lang/CharSequence;ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
