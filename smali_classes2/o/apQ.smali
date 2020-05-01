.class public final Lo/apQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:I

.field private d:[Ljava/lang/Object;

.field private final e:Lo/alj;


# direct methods
.method public constructor <init>(Lo/alj;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/apQ;->e:Lo/alj;

    .line 15
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lo/apQ;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lo/apQ;->b:I

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lo/apQ;->d:[Ljava/lang/Object;

    iget v1, p0, Lo/apQ;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/apQ;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 3

    .line 19
    iget-object v0, p0, Lo/apQ;->d:[Ljava/lang/Object;

    iget v1, p0, Lo/apQ;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/apQ;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final e()Lo/alj;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/apQ;->e:Lo/alj;

    return-object v0
.end method
