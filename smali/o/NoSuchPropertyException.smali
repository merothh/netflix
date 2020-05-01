.class public final Lo/NoSuchPropertyException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/MutableShort;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lo/NoSuchPropertyException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/NoSuchPropertyException;

    invoke-direct {v0}, Lo/NoSuchPropertyException;-><init>()V

    sput-object v0, Lo/NoSuchPropertyException;->e:Lo/NoSuchPropertyException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/NoSuchPropertyException;
    .locals 1

    .line 19
    sget-object v0, Lo/NoSuchPropertyException;->e:Lo/NoSuchPropertyException;

    return-object v0
.end method


# virtual methods
.method public a()Lo/MutableShort;
    .locals 1

    .line 15
    new-instance v0, Lo/MutableShort;

    invoke-direct {v0}, Lo/MutableShort;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/NoSuchPropertyException;->a()Lo/MutableShort;

    move-result-object v0

    return-object v0
.end method
