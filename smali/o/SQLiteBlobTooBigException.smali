.class public Lo/SQLiteBlobTooBigException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SQLiteBindOrColumnIndexOutOfRangeException;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
        "TINFO;>;"
    }
.end annotation


# static fields
.field private static final a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/SQLiteBlobTooBigException;

    invoke-direct {v0}, Lo/SQLiteBlobTooBigException;-><init>()V

    sput-object v0, Lo/SQLiteBlobTooBigException;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/SQLiteBindOrColumnIndexOutOfRangeException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "TINFO;>;"
        }
    .end annotation

    .line 24
    sget-object v0, Lo/SQLiteBlobTooBigException;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
