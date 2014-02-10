.class Lcom/example/reverse2_1/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverse2_1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverse2_1/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/reverse2_1/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    iget-object v1, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    #getter for: Lcom/example/reverse2_1/MainActivity;->edit_userName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/example/reverse2_1/MainActivity;->access$0(Lcom/example/reverse2_1/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    #getter for: Lcom/example/reverse2_1/MainActivity;->edit_sn:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/reverse2_1/MainActivity;->access$1(Lcom/example/reverse2_1/MainActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 40
    #calls: Lcom/example/reverse2_1/MainActivity;->checkSN(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/example/reverse2_1/MainActivity;->access$2(Lcom/example/reverse2_1/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    .line 46
    const v1, 0x7f05000b

    .line 45
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    .line 52
    const v1, 0x7f05000c

    .line 51
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    #getter for: Lcom/example/reverse2_1/MainActivity;->btn_register:Landroid/widget/Button;
    invoke-static {v0}, Lcom/example/reverse2_1/MainActivity;->access$3(Lcom/example/reverse2_1/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity$1;->this$0:Lcom/example/reverse2_1/MainActivity;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/example/reverse2_1/MainActivity;->setTitle(I)V

    goto :goto_0
.end method
