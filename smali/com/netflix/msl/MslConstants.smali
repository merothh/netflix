.class public abstract Lcom/netflix/msl/MslConstants;
.super Ljava/lang/Object;
.source "MslConstants.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final MAX_LONG_VALUE:J = 0x20000000000000L

.field public static final MAX_MESSAGES:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
