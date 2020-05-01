.class public final Lo/LocalSocket;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LocalSocket$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/LocalSocket;

.field public static final d:Lo/LocalSocket;


# instance fields
.field private final a:I

.field private final c:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Lo/LocalSocket;

    const/16 v1, 0xe10

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lo/LocalSocket;-><init>(III)V

    sput-object v0, Lo/LocalSocket;->d:Lo/LocalSocket;

    .line 52
    new-instance v0, Lo/LocalSocket;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v1}, Lo/LocalSocket;-><init>(III)V

    sput-object v0, Lo/LocalSocket;->b:Lo/LocalSocket;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lo/LocalSocket;->e:I

    .line 62
    iput p2, p0, Lo/LocalSocket;->c:I

    .line 63
    iput p3, p0, Lo/LocalSocket;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 78
    iget v0, p0, Lo/LocalSocket;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 85
    iget v0, p0, Lo/LocalSocket;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 71
    iget v0, p0, Lo/LocalSocket;->e:I

    return v0
.end method
