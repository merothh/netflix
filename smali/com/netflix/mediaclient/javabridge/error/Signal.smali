.class public final enum Lcom/netflix/mediaclient/javabridge/error/Signal;
.super Ljava/lang/Enum;
.source "Signal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/javabridge/error/Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGABRT:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGALRM:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGBUS:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGCHLD:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGCONT:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGFPE:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGHUP:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGILL:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGINT:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGIO:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGKILL:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGPIPE:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGPROF:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGPWR:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGQUIT:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGRTMIN:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGSEGV:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGSTKFLT:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGSTOP:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGSYS:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGTERM:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGTRAP:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGTSTP:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGTTIN:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGTTOU:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGURG:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGUSR1:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGUSR2:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGVTALRM:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGWINCH:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGXCPU:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field public static final enum SIGXFSZ:Lcom/netflix/mediaclient/javabridge/error/Signal;


# instance fields
.field protected description:Ljava/lang/String;

.field protected value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGHUP"

    const/4 v2, 0x0

    const-string/jumbo v3, "SIGHUP"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGHUP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGINT"

    const-string/jumbo v2, "SIGINT"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGINT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGQUIT"

    const-string/jumbo v2, "SIGQUIT"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGQUIT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGILL"

    const-string/jumbo v2, "SIGILL"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGILL:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGTRAP"

    const-string/jumbo v2, "SIGTRAP"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTRAP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGABRT"

    const/4 v2, 0x6

    const-string/jumbo v3, "SIGABRT"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGABRT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGBUS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string/jumbo v4, "SIGBUS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGBUS:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGFPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string/jumbo v4, "SIGFPE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGFPE:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGKILL"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string/jumbo v4, "SIGKILL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGKILL:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGUSR1"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string/jumbo v4, "SIGUSR1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGUSR1:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGSEGV"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string/jumbo v4, "SIGSEGV"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSEGV:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGUSR2"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string/jumbo v4, "SIGUSR2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGUSR2:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGPIPE"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string/jumbo v4, "SIGPIPE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGPIPE:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGALRM"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string/jumbo v4, "SIGALRM"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGALRM:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGTERM"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string/jumbo v4, "SIGTERM"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTERM:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGSTKFLT"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string/jumbo v4, "SIGSTKFLT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSTKFLT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGCHLD"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string/jumbo v4, "SIGCHLD"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGCHLD:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGCONT"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string/jumbo v4, "SIGCONT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGCONT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGSTOP"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const-string/jumbo v4, "SIGSTOP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSTOP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGTSTP"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const-string/jumbo v4, "SIGTSTP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTSTP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGTTIN"

    const/16 v2, 0x14

    const/16 v3, 0x15

    const-string/jumbo v4, "SIGTTIN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTTIN:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGTTOU"

    const/16 v2, 0x15

    const/16 v3, 0x16

    const-string/jumbo v4, "SIGTTOU"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTTOU:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGURG"

    const/16 v2, 0x16

    const/16 v3, 0x17

    const-string/jumbo v4, "SIGURG"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGURG:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGXCPU"

    const/16 v2, 0x17

    const/16 v3, 0x18

    const-string/jumbo v4, "SIGXCPU"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGXCPU:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGXFSZ"

    const/16 v2, 0x18

    const/16 v3, 0x19

    const-string/jumbo v4, "SIGXFSZ"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGXFSZ:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGVTALRM"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    const-string/jumbo v4, "SIGVTALRM"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGVTALRM:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGPROF"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const-string/jumbo v4, "SIGPROF"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGPROF:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGWINCH"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    const-string/jumbo v4, "SIGWINCH"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGWINCH:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGIO"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    const-string/jumbo v4, "SIGIO"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGIO:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGPWR"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    const-string/jumbo v4, "SIGPWR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGPWR:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGSYS"

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    const-string/jumbo v4, "SIGSYS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSYS:Lcom/netflix/mediaclient/javabridge/error/Signal;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    const-string/jumbo v1, "SIGRTMIN"

    const/16 v2, 0x1f

    const/16 v3, 0x20

    const-string/jumbo v4, "SIGRTMIN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/error/Signal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGRTMIN:Lcom/netflix/mediaclient/javabridge/error/Signal;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/netflix/mediaclient/javabridge/error/Signal;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGHUP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGINT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGQUIT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGILL:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTRAP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGABRT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGBUS:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGFPE:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGKILL:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGUSR1:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSEGV:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGUSR2:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGPIPE:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGALRM:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTERM:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSTKFLT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGCHLD:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGCONT:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSTOP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTSTP:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTTIN:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGTTOU:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGURG:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGXCPU:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGXFSZ:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGVTALRM:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGPROF:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGWINCH:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGIO:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGPWR:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGSYS:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/netflix/mediaclient/javabridge/error/Signal;->SIGRTMIN:Lcom/netflix/mediaclient/javabridge/error/Signal;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->$VALUES:[Lcom/netflix/mediaclient/javabridge/error/Signal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/javabridge/error/Signal;->value:I

    iput-object p4, p0, Lcom/netflix/mediaclient/javabridge/error/Signal;->description:Ljava/lang/String;

    return-void
.end method

.method public static toSignal(I)Lcom/netflix/mediaclient/javabridge/error/Signal;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/error/Signal;->values()[Lcom/netflix/mediaclient/javabridge/error/Signal;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/error/Signal;->values()[Lcom/netflix/mediaclient/javabridge/error/Signal;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/netflix/mediaclient/javabridge/error/Signal;->value:I

    if-ne v1, p0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/error/Signal;->values()[Lcom/netflix/mediaclient/javabridge/error/Signal;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/error/Signal;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/error/Signal;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/javabridge/error/Signal;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/javabridge/error/Signal;->$VALUES:[Lcom/netflix/mediaclient/javabridge/error/Signal;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/javabridge/error/Signal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/javabridge/error/Signal;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/Signal;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/error/Signal;->value:I

    return v0
.end method
