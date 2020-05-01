.class Lo/afL;
.super Ljava/lang/Object;

# interfaces
.implements Lo/afP$Activity;


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/afL;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/CookieManager;)V
    .locals 1

    iget-boolean v0, p0, Lo/afL;->c:Z

    invoke-static {v0, p1}, Lo/afP;->b(ZLandroid/webkit/CookieManager;)V

    return-void
.end method
