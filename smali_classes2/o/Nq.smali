.class Lo/Nq;
.super Ljava/lang/Object;

# interfaces
.implements Lo/MenuPopupWindow$Application;


# instance fields
.field private final d:Lo/Np;


# direct methods
.method public constructor <init>(Lo/Np;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Nq;->d:Lo/Np;

    return-void
.end method


# virtual methods
.method public a(Lo/BC;)V
    .locals 1

    iget-object v0, p0, Lo/Nq;->d:Lo/Np;

    invoke-static {v0, p1}, Lo/Np;->a(Lo/Np;Lo/BC;)V

    return-void
.end method
