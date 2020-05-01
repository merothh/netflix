.class public Lo/ob;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/sA;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lo/jX;


# direct methods
.method public constructor <init>(Lo/sA;Ljava/lang/String;Ljava/lang/String;Lo/jX;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/ob;->b:Lo/sA;

    .line 21
    iput-object p2, p0, Lo/ob;->c:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lo/ob;->d:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lo/ob;->e:Lo/jX;

    return-void
.end method


# virtual methods
.method public a()Lo/sA;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/ob;->b:Lo/sA;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ob;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/ob;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo/jX;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/ob;->e:Lo/jX;

    return-object v0
.end method
