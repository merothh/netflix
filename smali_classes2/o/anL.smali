.class public final Lo/anL;
.super Lo/aoG;
.source ""


# instance fields
.field private final e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/aoG;-><init>()V

    iput-object p1, p0, Lo/anL;->e:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Thread;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/anL;->e:Ljava/lang/Thread;

    return-object v0
.end method
