.class Lo/afN;
.super Ljava/lang/Object;

# interfaces
.implements Lo/afP$Activity;


# static fields
.field public static final c:Lo/afN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/afN;

    invoke-direct {v0}, Lo/afN;-><init>()V

    sput-object v0, Lo/afN;->c:Lo/afN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/CookieManager;)V
    .locals 0

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method
