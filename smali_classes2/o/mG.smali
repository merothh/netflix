.class public Lo/mG;
.super Lo/ahD;
.source ""


# instance fields
.field private final b:Lo/dc$TaskDescription;


# direct methods
.method public constructor <init>(Lo/dc$TaskDescription;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lo/dc$TaskDescription;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ahD;-><init>([B)V

    .line 22
    iput-object p1, p0, Lo/mG;->b:Lo/dc$TaskDescription;

    return-void
.end method


# virtual methods
.method public e()Lo/dc$TaskDescription;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/mG;->b:Lo/dc$TaskDescription;

    return-object v0
.end method
