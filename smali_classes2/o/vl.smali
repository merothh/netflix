.class public Lo/vl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tH;
.implements Lo/tN;


# instance fields
.field b:Lo/tN$TaskDescription;

.field c:Lo/tH$TaskDescription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/tN$TaskDescription;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/vl;->b:Lo/tN$TaskDescription;

    return-void
.end method

.method public c()Lo/tN$TaskDescription;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/vl;->b:Lo/tN$TaskDescription;

    return-object v0
.end method

.method public c(Lo/tH$TaskDescription;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/vl;->c:Lo/tH$TaskDescription;

    return-void
.end method

.method public d()Lo/tH$TaskDescription;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/vl;->c:Lo/tH$TaskDescription;

    return-object v0
.end method
