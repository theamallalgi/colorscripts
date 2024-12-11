# Makefile for installing colorscript CLI tool

# Directories
BIN_DIR=/usr/local/bin
MAN_DIR=/usr/share/man/man1
COLORSCRIPTS_DIR=/opt/colorscripts/colorscripts

# Files
EXEC=colorscript
MAN_PAGE=colorscript.1

# Install Command
install:
	@echo "Installing colorscript..."
	@sudo cp $(EXEC) $(BIN_DIR)
	@sudo cp $(MAN_PAGE) $(MAN_DIR)
	@echo "Installation complete!"

# Uninstall Command
uninstall:
	@echo "Uninstalling colorscript..."
	@sudo rm -f $(BIN_DIR)/$(EXEC)
	@sudo rm -f $(MAN_DIR)/$(MAN_PAGE)
	@echo "Uninstallation complete!"

# Build Command (Optional, if you need to build the binary)
build:
	@echo "Building colorscript..."
	# Add build commands if necessary (e.g., compiling a Go or Rust binary)
	@echo "Build complete!"
