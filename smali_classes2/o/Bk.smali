.class public Lo/Bk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lo/Bk;->c:Ljava/lang/String;

    .line 13
    iput p2, p0, Lo/Bk;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/Bk;->c:Ljava/lang/String;

    .line 18
    iput p2, p0, Lo/Bk;->b:I

    .line 19
    iput-boolean p3, p0, Lo/Bk;->d:Z

    return-void
.end method
