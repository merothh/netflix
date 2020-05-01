.class public final Lo/JsonReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lo/JsonReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/JsonReader;

    invoke-direct {v0}, Lo/JsonReader;-><init>()V

    sput-object v0, Lo/JsonReader;->b:Lo/JsonReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/JsonReader;
    .locals 1

    .line 19
    sget-object v0, Lo/JsonReader;->b:Lo/JsonReader;

    return-object v0
.end method


# virtual methods
.method public e()Lo/JsonToken;
    .locals 1

    .line 15
    new-instance v0, Lo/JsonToken;

    invoke-direct {v0}, Lo/JsonToken;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/JsonReader;->e()Lo/JsonToken;

    move-result-object v0

    return-object v0
.end method
