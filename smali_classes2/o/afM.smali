.class Lo/afM;
.super Ljava/lang/Object;

# interfaces
.implements Lo/afP$Activity;


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afM;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/CookieManager;)V
    .locals 1

    iget-object v0, p0, Lo/afM;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lo/afP;->a(Ljava/lang/StringBuilder;Landroid/webkit/CookieManager;)V

    return-void
.end method
