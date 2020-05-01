.class public final Lo/TextKeyListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lo/QwertyKeyListener;)Lo/LinkMovementMethod;
    .locals 1

    const-string v0, "koreaCheckboxesView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lo/LinkMovementMethod;

    invoke-direct {v0, p1}, Lo/LinkMovementMethod;-><init>(Lo/QwertyKeyListener;)V

    return-object v0
.end method
