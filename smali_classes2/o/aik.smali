.class public Lo/aik;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aik$ActionBar;
    }
.end annotation


# static fields
.field private static c:Lo/aik$ActionBar;

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/aik;->d:Ljava/util/regex/Pattern;

    .line 106
    new-instance v0, Lo/aij;

    invoke-direct {v0}, Lo/aij;-><init>()V

    sput-object v0, Lo/aik;->c:Lo/aik$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lo/aik;->c:Lo/aik$ActionBar;

    invoke-interface {v0, p0}, Lo/aik$ActionBar;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .line 102
    sget-object v0, Lo/aik;->c:Lo/aik$ActionBar;

    invoke-interface {v0, p0}, Lo/aik$ActionBar;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Lo/aik$ActionBar;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 79
    sput-object p0, Lo/aik;->c:Lo/aik$ActionBar;

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Base64 implementation cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
