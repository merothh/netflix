.class public final Lo/Base64InputStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ByteStringUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/Base64InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/Base64InputStream;

    invoke-direct {v0}, Lo/Base64InputStream;-><init>()V

    sput-object v0, Lo/Base64InputStream;->c:Lo/Base64InputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/Base64InputStream;
    .locals 1

    .line 19
    sget-object v0, Lo/Base64InputStream;->c:Lo/Base64InputStream;

    return-object v0
.end method


# virtual methods
.method public e()Lo/ByteStringUtils;
    .locals 1

    .line 15
    new-instance v0, Lo/ByteStringUtils;

    invoke-direct {v0}, Lo/ByteStringUtils;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/Base64InputStream;->e()Lo/ByteStringUtils;

    move-result-object v0

    return-object v0
.end method
