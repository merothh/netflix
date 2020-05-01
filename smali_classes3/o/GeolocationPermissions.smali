.class Lo/GeolocationPermissions;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GeolocationPermissions;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/GeolocationPermissions;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/GeolocationPermissions;->c:Landroid/content/Context;

    iget-object v1, p0, Lo/GeolocationPermissions;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/HttpAuthHandler;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
