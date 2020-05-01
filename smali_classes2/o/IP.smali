.class Lo/IP;
.super Ljava/lang/Object;

# interfaces
.implements Lo/DE$Activity;


# instance fields
.field private final e:Lo/IL;


# direct methods
.method public constructor <init>(Lo/IL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IP;->e:Lo/IL;

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lo/IP;->e:Lo/IL;

    invoke-static {v0, p1}, Lo/IL;->d(Lo/IL;Z)V

    return-void
.end method
